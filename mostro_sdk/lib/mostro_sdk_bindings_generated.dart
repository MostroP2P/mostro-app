// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `ffi_plugin/ffi_plugin.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class MostroSdkBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  MostroSdkBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  MostroSdkBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Frees a pointer to a `c_char` string.
  /// # Safety
  void free_char_ptr(
    ffi.Pointer<ffi.Char> ptr,
  ) {
    return _free_char_ptr(
      ptr,
    );
  }

  late final _free_char_ptrPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>(
          'free_char_ptr');
  late final _free_char_ptr =
      _free_char_ptrPtr.asFunction<void Function(ffi.Pointer<ffi.Char>)>();

  /// Encrypts data using the AES-GCM-SIV algorithm.
  ///
  /// # Safety
  ///
  /// This function is unsafe because it operates on raw pointers.
  ///
  /// The caller is responsible for:
  /// - Ensuring both `key` and `data` are valid pointers to null-terminated
  /// C strings.
  /// - key shoud be a base64 encoded string
  /// - Properly freeing the `string` and `error_ptr` fields of the returned
  /// `StringResult` struct on the Dart side.
  ///
  /// To free the strings in Dart, you should use `ffi`'s `calloc.free` function.
  StringResult encrypt(
    ffi.Pointer<ffi.Char> key,
    ffi.Pointer<ffi.Char> data,
  ) {
    return _encrypt(
      key,
      data,
    );
  }

  late final _encryptPtr = _lookup<
      ffi.NativeFunction<
          StringResult Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('encrypt');
  late final _encrypt = _encryptPtr.asFunction<
      StringResult Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// Decrypts data using the AES-GCM-SIV algorithm.
  ///
  /// # Safety
  ///
  /// This function is unsafe because it operates on raw pointers.
  ///
  /// The caller is responsible for:
  /// - Ensuring both `key` and `data` are valid pointers to null-terminated
  /// C strings.
  /// - Properly freeing the `string` and `error_ptr` fields of the returned
  /// `StringResult` struct on the Dart side.
  ///
  /// To free the strings in Dart, you should use `ffi`'s `calloc.free` function.
  StringResult decrypt(
    ffi.Pointer<ffi.Char> encrypted_data_json,
  ) {
    return _decrypt(
      encrypted_data_json,
    );
  }

  late final _decryptPtr =
      _lookup<ffi.NativeFunction<StringResult Function(ffi.Pointer<ffi.Char>)>>(
          'decrypt');
  late final _decrypt =
      _decryptPtr.asFunction<StringResult Function(ffi.Pointer<ffi.Char>)>();

  /// Generates a random salt using the Argon2 algorithm.
  ffi.Pointer<ffi.Char> generate_salt() {
    return _generate_salt();
  }

  late final _generate_saltPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'generate_salt');
  late final _generate_salt =
      _generate_saltPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  /// Hashes a password with a provided salt using the Argon2 algorithm.
  ///
  /// # Safety
  ///
  /// This function is unsafe because it operates on raw pointers.
  ///
  /// The caller is responsible for:
  /// - Ensuring both `password` and `salt` are valid pointers to null-terminated
  /// C strings.
  /// - Properly freeing the `string` and `error_ptr` fields of the returned
  /// `StringResult` struct on the Dart side.
  ///
  /// To free the strings in Dart, you should use `ffi`'s `calloc.free` function.
  /// Make sure you only free the strings when they are no longer needed, as doing
  /// so earlier will likely cause your program to crash.
  StringResult hash_password(
    ffi.Pointer<ffi.Char> password,
    ffi.Pointer<ffi.Char> salt,
  ) {
    return _hash_password(
      password,
      salt,
    );
  }

  late final _hash_passwordPtr = _lookup<
      ffi.NativeFunction<
          StringResult Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('hash_password');
  late final _hash_password = _hash_passwordPtr.asFunction<
      StringResult Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// Verifies a password against a provided hash.
  ///
  /// # Safety
  ///
  /// This function is unsafe because it operates on raw pointers.
  ///
  /// The caller is responsible for:
  /// - Ensuring both `password` and `pasword_hash` are valid pointers to null-terminated
  /// C strings.
  /// - Properly freeing the `string` and `error_ptr` fields of the returned
  /// `BoolResult` struct on the Dart side.
  ///
  /// To free the strings in Dart, you should use `ffi`'s `calloc.free` function.
  /// Make sure you only free the strings when they are no longer needed, as doing
  /// so earlier will likely cause your program to crash.
  BoolResult verify_password(
    ffi.Pointer<ffi.Char> password,
    ffi.Pointer<ffi.Char> password_hash,
  ) {
    return _verify_password(
      password,
      password_hash,
    );
  }

  late final _verify_passwordPtr = _lookup<
      ffi.NativeFunction<
          BoolResult Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>)>>('verify_password');
  late final _verify_password = _verify_passwordPtr.asFunction<
      BoolResult Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// Derives an encryption key from a password and salt using the Argon2
  /// algorithm. The derived key is 32 bytes long and is encoded as a hex string.
  /// The key derivation uses the Argon2id algorithm with default parameters, with
  /// the provided password serving as the secret key and the salt as the
  /// associated data.
  ///
  /// # Safety
  ///
  /// This function is unsafe because it operates on raw pointers. The caller is
  /// responsible for:
  /// - Ensuring both `key` and `salt` are valid pointers to null-terminated C
  /// strings.
  /// - Properly freeing the `string` and `error_ptr` fields of the returned
  ///
  /// `StringResult` struct on the Dart side. To free the strings in Dart, you
  /// should use `ffi`'s `calloc.free` function.
  StringResult derive_encryption_key(
    ffi.Pointer<ffi.Char> key,
    ffi.Pointer<ffi.Char> salt,
  ) {
    return _derive_encryption_key(
      key,
      salt,
    );
  }

  late final _derive_encryption_keyPtr = _lookup<
      ffi.NativeFunction<
          StringResult Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>)>>('derive_encryption_key');
  late final _derive_encryption_key = _derive_encryption_keyPtr.asFunction<
      StringResult Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  /// # Safety
  StringResult get_keys_from_sk_str(
    ffi.Pointer<ffi.Char> value,
  ) {
    return _get_keys_from_sk_str(
      value,
    );
  }

  late final _get_keys_from_sk_strPtr =
      _lookup<ffi.NativeFunction<StringResult Function(ffi.Pointer<ffi.Char>)>>(
          'get_keys_from_sk_str');
  late final _get_keys_from_sk_str = _get_keys_from_sk_strPtr
      .asFunction<StringResult Function(ffi.Pointer<ffi.Char>)>();

  /// # Safety
  StringResult get_keys_from_pk_str(
    ffi.Pointer<ffi.Char> value,
  ) {
    return _get_keys_from_pk_str(
      value,
    );
  }

  late final _get_keys_from_pk_strPtr =
      _lookup<ffi.NativeFunction<StringResult Function(ffi.Pointer<ffi.Char>)>>(
          'get_keys_from_pk_str');
  late final _get_keys_from_pk_str = _get_keys_from_pk_strPtr
      .asFunction<StringResult Function(ffi.Pointer<ffi.Char>)>();

  /// Check if a public key (XOnlyPublicKey) is valid.
  /// # Safety
  BoolResult validate_public_key(
    ffi.Pointer<ffi.Char> public_key,
  ) {
    return _validate_public_key(
      public_key,
    );
  }

  late final _validate_public_keyPtr =
      _lookup<ffi.NativeFunction<BoolResult Function(ffi.Pointer<ffi.Char>)>>(
          'validate_public_key');
  late final _validate_public_key = _validate_public_keyPtr
      .asFunction<BoolResult Function(ffi.Pointer<ffi.Char>)>();

  /// Check if a secret key is valid.
  /// # Safety
  BoolResult validate_secret_key(
    ffi.Pointer<ffi.Char> secret_key,
  ) {
    return _validate_secret_key(
      secret_key,
    );
  }

  late final _validate_secret_keyPtr =
      _lookup<ffi.NativeFunction<BoolResult Function(ffi.Pointer<ffi.Char>)>>(
          'validate_secret_key');
  late final _validate_secret_key = _validate_secret_keyPtr
      .asFunction<BoolResult Function(ffi.Pointer<ffi.Char>)>();
}

final class StringResult extends ffi.Struct {
  external ffi.Pointer<ffi.Char> ok_ptr;

  external ffi.Pointer<ffi.Char> error_ptr;
}

final class BoolResult extends ffi.Struct {
  @ffi.Bool()
  external bool boolean;

  external ffi.Pointer<ffi.Char> error_ptr;
}
