#include <bits/stdc++.h>
using namespace std;
string rep(string s, char x, string y) {
    string ans = "";
    for (int i = 0; i < s.size(); i++) {
        if (s[i] == x) {
            ans += y;
        } else {
            ans += s[i];
        }
    }
    return ans;
}
int main() {
    string s = "#include <bits/stdc++.h>\nusing namespace std;\nstring rep(string s, char x, string y) {\n    string ans = \"\";\n    for (int i = 0; i < s.size(); i++) {\n        if (s[i] == x) {\n            ans += y;\n        } else {\n            ans += s[i];\n        }\n    }\n    return ans;\n}\nint main() {\n    string s = \"\";\n    cout << s.substr(0,301) + rep(rep(rep(s, '\\\\', \"\\\\\\\\\"), '\\n', \"\\\\n\"), '\\\"', \"\\\\\\\"\") + s.substr(301,s.size()-301) << endl;\n}";
    cout << s.substr(0,301) + rep(rep(rep(s, '\\', "\\\\"), '\n', "\\n"), '\"', "\\\"") + s.substr(301,s.size()-301) << endl;
}
