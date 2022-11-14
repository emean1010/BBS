package kybmig.ssm.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.FileInputStream;
import java.io.IOException;


@Controller
@RequestMapping("/static")
public class StaticController {
    String dir = "D:\\demo\\BBS\\code\\src\\main\\resources\\static";

    public StaticController() {
    }

    public ResponseEntity<byte[]> staticFile(@PathVariable String path) {
        byte content[];
        try (FileInputStream is = new FileInputStream(path)) {
            content = is.readAllBytes();
        } catch (IOException e) {
            String s = String.format("Load file <%s> error <%s>", path, e);
            throw new RuntimeException(s);
        }

        return ResponseEntity.ok().
                body(content);
    }

    @GetMapping("/{filePath}")
    @ResponseBody
    public ResponseEntity<byte[]> mainFile(@PathVariable String filePath) {
        String path = String.format("%s\\%s", dir, filePath);
        return staticFile(path);
    }

    @GetMapping("/health/common/{filePath}")
    @ResponseBody
    public ResponseEntity<byte[]> commonFile(@PathVariable String filePath) {
        String path = String.format("%s\\%s\\%s", dir, "health\\common",filePath);
        return staticFile(path);
    }

    @GetMapping("/health/{item}/{filePath}")
    @ResponseBody
    public ResponseEntity<byte[]> szFile(@PathVariable String item, @PathVariable String filePath) {
        String path = String.format("%s\\%s\\%s\\%s", dir, "health", item, filePath);
        return staticFile(path);
    }

    @GetMapping("/health/{item}/static/{filePath}")
    @ResponseBody
    public ResponseEntity<byte[]> szStaticFile(@PathVariable String item, @PathVariable String filePath) {
        String path = String.format("%s\\%s\\%s\\%s\\%s", dir, "health", item, "static", filePath);
        return staticFile(path);
    }
}
