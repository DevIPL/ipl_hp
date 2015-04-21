// Copyright (C) 2008 Google Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Modded by iwai @ I Planning Corp.

PR.registerLangHandler(PR.sourceDecorator({
        keywords: ('curl on import from define-proc def return let include field define-class self set splice method if else proc for do in inherits'),
        cStyleComments: true
      }), ['curl']);
