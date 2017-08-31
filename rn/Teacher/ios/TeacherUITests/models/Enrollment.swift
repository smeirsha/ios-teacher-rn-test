/*
 * Copyright (C) 2017 - present Instructure, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

/* This is an auto-generated file. */

struct Enrollment {
    static let studentEnrollment = "StudentEnrollment"
    static let teacherEnrollment = "TeacherEnrollment"
    static let observerEnrollment = "ObserverEnrollment"
    static let taEnrollment = "TaEnrollment"

    let id: Int
    let courseId: Int
    let courseSectionId: Int
    let enrollmentState: String
    let type: String
    let userId: Int
    let associatedUserId: Int
    let role: String
    let updatedAt: String
    let startAt: String
    let endAt: String
    let lastActivityAt: String
    let totalActivityTime: Int
    let htmlUrl: String
    let grades: String
}
