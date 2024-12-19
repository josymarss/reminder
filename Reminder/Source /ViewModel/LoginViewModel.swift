import Foundation
import Firebase

class LoginViewModel {
    var result: ((String) -> Void)?
    
    func authUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            if let error = error {
                print("\(error.localizedDescription)")
                return
            }else {
                self.result!(email)
            }
        }
    }
}
