public class DirectoryManagerTester: DirectoryManager {
    private let testPath = UUID().uuidString
    private let testDirectory: URL

    public init() {
        self.testDirectory = URL.init(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(self.testPath)

        let manager = FileManager()
        do {
            try manager.createDirectory(at: temporaryDirectory(), withIntermediateDirectories: true, attributes: nil)

            try manager.createDirectory(at: documentDirectory(), withIntermediateDirectories: true, attributes: nil)

            try manager.createDirectory(at: cachesDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(
                at: documentationDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(
                at: autosavedInformationDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(
                at: applicationSupportDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: inputMethodsDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(
                at: preferencePanesDirectory(), withIntermediateDirectories: true, attributes: nil)

            try manager.createDirectory(
                at: demoApplicationDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(
                at: developerApplicationDirectory(), withIntermediateDirectories: true, attributes: nil)

            try manager.createDirectory(at: desktopDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: downloadsDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: moviesDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: musicDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: picturesDirectory(), withIntermediateDirectories: true, attributes: nil)
            try manager.createDirectory(at: sharedPublicDirectory(), withIntermediateDirectories: true, attributes: nil)
        } catch _ {
        }
    }

    deinit {
        try! FileManager().removeItem(at: testDirectory)
    }

    public func homeDirectory() -> URL {
        return testDirectory
    }
    public func temporaryDirectory() -> URL {
        return testDirectory.appendingPathComponent("tmp")
    }

    public func documentDirectory() -> URL {
        return testDirectory.appendingPathComponent("Documents")
    }

    public func libraryDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library")
    }
    public func cachesDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/Caches")
    }
    public func documentationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/Documentation")
    }
    public func autosavedInformationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/Autosave Information")
    }
    public func applicationSupportDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/Application Support")
    }
    public func inputMethodsDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/Input Methods")
    }
    public func preferencePanesDirectory() -> URL {
        return testDirectory.appendingPathComponent("Library/PreferencePanes")
    }

    public func applicationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Applications")
    }
    public func demoApplicationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Applications/Demos")
    }
    public func adminApplicationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Applications/Utilities")
    }

    public func developerDirectory() -> URL {
        return testDirectory.appendingPathComponent("Developer")
    }
    public func developerApplicationDirectory() -> URL {
        return testDirectory.appendingPathComponent("Developer/Applications")
    }

    public func desktopDirectory() -> URL {
        return testDirectory.appendingPathComponent("Desktop")
    }
    public func downloadsDirectory() -> URL {
        return testDirectory.appendingPathComponent("Downloads")
    }
    public func moviesDirectory() -> URL {
        return testDirectory.appendingPathComponent("Movies")
    }
    public func musicDirectory() -> URL {
        return testDirectory.appendingPathComponent("Music")
    }
    public func picturesDirectory() -> URL {
        return testDirectory.appendingPathComponent("Pictures")
    }
    public func sharedPublicDirectory() -> URL {
        return testDirectory.appendingPathComponent("Public")
    }
}
