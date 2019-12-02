import XCTest
import AKUStoreManager
@testable import TestApplication

class Tests: XCTestCase {
    var delegate: AppDelegate!
    
    override func setUp() {
        super.setUp()
        
        delegate = UIApplication.shared.delegate as? AppDelegate
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHaveHomeDirecory() {
        XCTAssertNotNil(delegate.directoryManager.homeDirectory())
    }
    func testHaveTemporaryDirectory() {
        XCTAssertNotNil(delegate.directoryManager.temporaryDirectory())
    }
    
    func testExample() {
        
        let searchPathDirectories: [FileManager.SearchPathDirectory] =  [
            .applicationDirectory,
            .demoApplicationDirectory,
            .developerApplicationDirectory,
            .adminApplicationDirectory,
            .libraryDirectory,
            .developerDirectory,
            .userDirectory,
            .documentationDirectory,
            .documentDirectory,
            .coreServiceDirectory,
            .autosavedInformationDirectory,
            .desktopDirectory,
            .cachesDirectory,
            .applicationSupportDirectory,
            .downloadsDirectory,
            .inputMethodsDirectory,
            .moviesDirectory,
            .musicDirectory,
            .picturesDirectory,
            .printerDescriptionDirectory,
            .sharedPublicDirectory,
            .preferencePanesDirectory,
            .itemReplacementDirectory,
            .allApplicationsDirectory,
            .allLibrariesDirectory,
            .trashDirectory
        ]
        
        let domainMasks: [FileManager.SearchPathDomainMask] = [
            .userDomainMask,
            .localDomainMask,
            .networkDomainMask,
            .systemDomainMask,
            .allDomainsMask
        ]
        let fileManager = FileManager()
        for domainMask in domainMasks {
            for searchPathDirectory in searchPathDirectories {
                let urls = fileManager.urls(for: searchPathDirectory, in: domainMask)
                print("searchPath: \(searchPathDirectory), domain: \(domainMask), url: \(urls.first)")
            }
        }
        
    }
    
    func testPerformanceExample() {
        print(NSUserName())
        print(NSFullUserName())
        print(NSHomeDirectory())
        print(NSHomeDirectoryForUser("hoge"))
        print(NSTemporaryDirectory())
        print(NSOpenStepRootDirectory())
    }
    
}
