//
// Copyright (C) 2016-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest

class CKIPollSubmissionNetworkingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCreatePollSubmission() {
        let client = MockCKIClient()
        let pollSubmissionDictionary = Helpers.loadJSONFixture("poll_submission") as NSDictionary
        let pollSubmission = CKIPollSubmission(fromJSONDictionary: pollSubmissionDictionary)
        let pollDictionary = Helpers.loadJSONFixture("poll") as NSDictionary
        let poll = CKIPoll(fromJSONDictionary: pollDictionary)
        let pollSessionDictionary = Helpers.loadJSONFixture("poll_session") as NSDictionary
        let pollSession = CKIPollSession(fromJSONDictionary: pollSessionDictionary)
        
        client.createPollSubmission(pollSubmission, forPoll: poll, pollSession: pollSession)
        XCTAssertEqual(client.capturedPath!, "/api/v1/poll_sessions/1023/poll_submissions", "CKIPollSubmission returned API path for testCreatePollSubmission was incorrect")
        XCTAssertEqual(client.capturedMethod!, MockCKIClient.Method.Create, "CKIPollSubmission API Interaction Method was incorrect")
    }
}