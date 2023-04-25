<?php
class Hash{
    public static function make(string $plainText): string{
        return password_hash($plainText, PASSWORD_BCRYPT, ['cost'=>10]);
    }

    public static function verify(string $plainText, string $hashedPassword){
        if(password_verify($plainText, $hashedPassword)) {
            echo "Here";
        } else {
            echo "Not Here";
        }
        return password_verify($plainText, $hashedPassword);
    }
}
?>