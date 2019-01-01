Given(/^the program has finished$/) do
    @cucumber = `moss examples/license-old.md examples/license-new.md`
    @cucumber_version = `moss -v`
end

Then(/^the output is correct for each test$/) do
    lines = @cucumber.split("\n")

    expect(lines.length).to eq(19)

    expect(lines[0 .. 4].join("\n")).to eq('diff --git a/examples/license-old.md b/examples/license-new.md
index a9ac9dd..5c3f186 100644
--- a/examples/license-old.md
+++ b/examples/license-new.md
@@ -1,11 +1,10 @@')

    expect(lines[5 .. 6].join("\n")).to eq(" # FreeBSD License\n ")

    expect(lines[7 .. 9].join("\n")).to eq("-# Copyright 2012 Andrew Pennebaker. All rights reserved.\n+# Copyright 2012 YelloSoft. All rights reserved.\n ")

    expect(lines[10 .. 11].join("\n")).to eq(" Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\n ")

    expect(lines[12 .. 15].join("\n")).to eq(" 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n-2. Redistributions in binary form must reproduce the copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n+2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n ")

    expect(lines[16 .. -1].join("\n")).to eq("-THIS SOFTWARE IS PROVIDED BY THE AUTHORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\n-LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n+THIS SOFTWARE IS PROVIDED BY THE AUTHORS \"AS IS\" AND ANY EXPRESS WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.")

    expect(@cucumber_version).to match(%r(^moss))
end
