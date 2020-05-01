public protocol DirectoryManager {
    func homeDirectory() -> URL
    func temporaryDirectory() -> URL

    func documentDirectory() -> URL

    func libraryDirectory() -> URL
    func cachesDirectory() -> URL
    func documentationDirectory() -> URL
    func autosavedInformationDirectory() -> URL
    func applicationSupportDirectory() -> URL
    func inputMethodsDirectory() -> URL
    func preferencePanesDirectory() -> URL

    func applicationDirectory() -> URL
    func demoApplicationDirectory() -> URL
    func adminApplicationDirectory() -> URL

    func developerDirectory() -> URL
    func developerApplicationDirectory() -> URL

    func desktopDirectory() -> URL
    func downloadsDirectory() -> URL
    func moviesDirectory() -> URL
    func musicDirectory() -> URL
    func picturesDirectory() -> URL
    func sharedPublicDirectory() -> URL
}

public struct DirectoryManagerImp: DirectoryManager {
    public init() {}

    public func homeDirectory() -> URL {
        return URL(fileURLWithPath: NSHomeDirectory())
    }
    public func temporaryDirectory() -> URL {
        return URL(fileURLWithPath: NSTemporaryDirectory())
    }

    public func documentDirectory() -> URL {
        return FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    public func libraryDirectory() -> URL {
        return FileManager().urls(for: .libraryDirectory, in: .userDomainMask).first!
    }
    public func cachesDirectory() -> URL {
        return FileManager().urls(for: .cachesDirectory, in: .userDomainMask).first!
    }
    public func documentationDirectory() -> URL {
        return FileManager().urls(for: .documentationDirectory, in: .userDomainMask).first!
    }
    public func autosavedInformationDirectory() -> URL {
        return FileManager().urls(for: .autosavedInformationDirectory, in: .userDomainMask).first!
    }
    public func applicationSupportDirectory() -> URL {
        return FileManager().urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
    }
    public func inputMethodsDirectory() -> URL {
        return FileManager().urls(for: .inputMethodsDirectory, in: .userDomainMask).first!
    }
    public func preferencePanesDirectory() -> URL {
        return FileManager().urls(for: .preferencePanesDirectory, in: .userDomainMask).first!
    }

    public func applicationDirectory() -> URL {
        return FileManager().urls(for: .applicationDirectory, in: .userDomainMask).first!
    }
    public func demoApplicationDirectory() -> URL {
        return FileManager().urls(for: .demoApplicationDirectory, in: .userDomainMask).first!
    }
    public func adminApplicationDirectory() -> URL {
        return FileManager().urls(for: .adminApplicationDirectory, in: .userDomainMask).first!
    }

    public func developerDirectory() -> URL {
        return FileManager().urls(for: .developerDirectory, in: .userDomainMask).first!
    }
    public func developerApplicationDirectory() -> URL {
        return FileManager().urls(for: .developerApplicationDirectory, in: .userDomainMask).first!
    }

    public func desktopDirectory() -> URL {
        return FileManager().urls(for: .desktopDirectory, in: .userDomainMask).first!
    }
    public func downloadsDirectory() -> URL {
        return FileManager().urls(for: .downloadsDirectory, in: .userDomainMask).first!
    }
    public func moviesDirectory() -> URL {
        return FileManager().urls(for: .moviesDirectory, in: .userDomainMask).first!
    }
    public func musicDirectory() -> URL {
        return FileManager().urls(for: .musicDirectory, in: .userDomainMask).first!
    }
    public func picturesDirectory() -> URL {
        return FileManager().urls(for: .picturesDirectory, in: .userDomainMask).first!
    }
    public func sharedPublicDirectory() -> URL {
        return FileManager().urls(for: .sharedPublicDirectory, in: .userDomainMask).first!
    }
}
