package kybmig.ssm;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

public class Utility {

    private static Logger logger = LoggerFactory.getLogger(Utility.class);

    static public void log(String format, Object...args) {
        logger.info(String.format(format, args));
    }

    public static String imagePath(String filename) {
        String imageDir = "/static/images";
        return String.format("%s/%s", imageDir, filename);
    }

    // jar 用
    public static InputStream fileStream(String path) throws FileNotFoundException {
        String resource = String.format("%s.class", Utility.class.getSimpleName());
        log("resource %s", resource);
        log("resource path %s", Utility.class.getResource(""));
        var res = Utility.class.getResource(resource);
        if (res != null && res.toString().startsWith("jar:")) {
            // 打包后, templates 放在 jar 包的根目录下, 要加 / 才能取到
            // 不加 / 就是从 类的当前包目录下取
            path = String.format("/%s", path);
            InputStream is = Utility.class.getResourceAsStream(path);
            if (is == null) {
                throw new FileNotFoundException(String.format("在 jar 里面找不到 %s", path));
            } else {
                return is;
            }
        } else {
            path = String.format("src/main/resources/%s", path);
            return new FileInputStream(path);
        }
    }

    public static void save(String path, String data) {
        try (FileOutputStream os = new FileOutputStream(path)) {
            os.write(data.getBytes(StandardCharsets.UTF_8));
        } catch (IOException e) {
            String s = String.format("Save file <%s> error <%s>", path, e);
            throw new RuntimeException(s);
        }
    }

    public static String load(String path) {
        String content;
        try (FileInputStream is = new FileInputStream(path)) {
            content = new String(is.readAllBytes(), StandardCharsets.UTF_8);
        } catch (IOException e) {
            String s = String.format("Load file <%s> error <%s>", path, e);
            throw new RuntimeException(s);
        }
        return content;
    }

    public static MysqlDataSource getDataSource() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("12345");
        dataSource.setServerName("127.0.0.1");
        dataSource.setDatabaseName("ssm");

        // 用来设置时区和数据库连接的编码
        try {
            dataSource.setCharacterEncoding("UTF-8");
            dataSource.setServerTimezone("Asia/Shanghai");
            Utility.log("url: %s", dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dataSource;
    }

    public static Integer currentTime() {
        Long unixTime = System.currentTimeMillis() / 1000L;
        return unixTime.intValue();
    }

    public static String timeFromUnix(Integer t) {
//        Long unixTime = t * 1000L;
//        SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String formatTime = d.format(unixTime);
        String rangeTimeString;
        Long currentTime = System.currentTimeMillis() / 1000L;
        Integer rangeSeconds = currentTime.intValue() - t;
        Integer rangeHours = rangeSeconds / 3600;
        if (rangeSeconds < 60) {
            rangeTimeString = "刚刚";
        } else if (rangeSeconds < 3600) {
            Integer rangeMinutes = rangeSeconds / 60;
            rangeTimeString = String.format("%s分钟前", rangeMinutes);
        } else if (rangeHours < 24) {
            rangeTimeString = String.format("%s小时前", rangeHours);
        } else if (rangeHours < 720) {
            Integer rangeDays = rangeHours / 24;
            rangeTimeString = String.format("%s天前", rangeDays);
        } else if (rangeHours < 8760) {
            Integer rangeMonths = rangeHours / 24 / 30;
            rangeTimeString = String.format("%s月前", rangeMonths);
        } else {
            Integer rangeMonths = rangeHours / 24 / 365;
            rangeTimeString = String.format("%s年前", rangeMonths);
        }
//        Utility.log("time range: %s", rangeTimeString);
        return rangeTimeString;
    }

}
