package de.unipassau.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class SourceSinkManager {

    private final String file; // = "src/main/java/de/unipassau/utils/SourceSinkDatabase.java";
    private static SourceSinkManager instance = null;
    private final List<String> sources = new ArrayList<>();
    private final List<String> sinks = new ArrayList<>();

    private SourceSinkManager(String file) {
        this.file = file;
    }

    public static void initialize(String file) {
        if (instance != null) {
            throw new IllegalStateException("Sources db already initialized");
        }
        instance = new SourceSinkManager(file);
    }

    public boolean isEmpty() {
        return sources.isEmpty() && sinks.isEmpty();
    }

    public void parseSourcefile() {
        if (!isEmpty()) {
            throw new IllegalStateException("Source sink db already available");
        }
        try (Stream<String> lines = Files.lines(Path.of(this.file))) {
            lines.forEach(line -> {
                if (!line.isEmpty() && !line.startsWith("%")) {
                    String[] tokens = line.split("->");
                    String methodSign = tokens[0].trim();
                    String type = tokens[1].trim();
                    if (isSource(type)) {
                        sources.add(methodSign);
                    }
                    if (isSink(type)) {
                        sinks.add(methodSign);
                    }
                }
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<String> getSources() {
        return this.sources;
    }

    public List<String> getSinks() {
        return this.sinks;
    }

    public static boolean isSourceMethod(String methodName) {
        if (instance.getSources().isEmpty()) {
            throw new IllegalStateException("empty sources list");
        }
        return instance.getSources().stream().anyMatch(q -> q.contains(methodName));
    }

    public boolean isSinkMethod(String methodName) {
        if (instance.getSinks().isEmpty()) {
            throw new IllegalStateException("empty sinks list");
        }
        return sinks.stream().anyMatch(q -> q.contains(methodName));
    }

    public boolean isSource(String token) {
        return token.equals("_SOURCE_");
    }

    public boolean isSink(String token) {
        return token.equals("_SINK_");
    }

}
