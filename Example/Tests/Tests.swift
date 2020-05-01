import AKUStoreManager
import XCTest

@testable import TestApplication

class Tests: XCTestCase {
    var delegate: AppDelegate!

    override func setUp() {
        super.setUp()

        delegate = UIApplication.shared.delegate as? AppDelegate
    }

    func testHaveHomeDirecory() {
        XCTAssertNotNil(delegate.directoryManager.homeDirectory())
    }
    func testHaveTemporaryDirectory() {
        XCTAssertNotNil(delegate.directoryManager.temporaryDirectory())
    }

    func test_homeDirectory() {
        XCTAssertNotNil(delegate.directoryManager.homeDirectory())
    }

    func test_temporaryDirectory() {
        XCTAssertNotNil(delegate.directoryManager.temporaryDirectory())
    }

    func test_documentDirectory() {
        XCTAssertNotNil(delegate.directoryManager.documentDirectory())
    }

    func test_libraryDirectory() {
        XCTAssertNotNil(delegate.directoryManager.libraryDirectory())
    }

    func test_cachesDirectory() {
        XCTAssertNotNil(delegate.directoryManager.cachesDirectory())
    }

    func test_documentationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.documentationDirectory())
    }

    func test_autosavedInformationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.autosavedInformationDirectory())
    }

    func test_applicationSupportDirectory() {
        XCTAssertNotNil(delegate.directoryManager.applicationSupportDirectory())
    }

    func test_inputMethodsDirectory() {
        XCTAssertNotNil(delegate.directoryManager.inputMethodsDirectory())
    }

    func test_preferencePanesDirectory() {
        XCTAssertNotNil(delegate.directoryManager.preferencePanesDirectory())
    }

    func test_applicationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.applicationDirectory())
    }

    func test_demoApplicationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.demoApplicationDirectory())
    }

    func test_adminApplicationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.adminApplicationDirectory())
    }

    func test_developerDirectory() {
        XCTAssertNotNil(delegate.directoryManager.developerDirectory())
    }

    func test_developerApplicationDirectory() {
        XCTAssertNotNil(delegate.directoryManager.developerApplicationDirectory())
    }

    func test_desktopDirectory() {
        XCTAssertNotNil(delegate.directoryManager.desktopDirectory())
    }

    func test_downloadsDirectory() {
        XCTAssertNotNil(delegate.directoryManager.downloadsDirectory())
    }

    func test_moviesDirectory() {
        XCTAssertNotNil(delegate.directoryManager.moviesDirectory())
    }

    func test_musicDirectory() {
        XCTAssertNotNil(delegate.directoryManager.musicDirectory())
    }

    func test_picturesDirectory() {
        XCTAssertNotNil(delegate.directoryManager.picturesDirectory())
    }

    func test_sharedPublicDirectory() {
        XCTAssertNotNil(delegate.directoryManager.sharedPublicDirectory())
    }
}
