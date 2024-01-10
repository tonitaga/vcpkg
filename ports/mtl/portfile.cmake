vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO tonitaga/Matrix-Template-Library-CPP
    REF b04caec651bcbd906d8e35612d26af56b656165a
    SHA512 8d2d16240a26abcc339d4ecdca717ee2d4f2c936032ad0ef2fee923b6fdf43ee6e774eae9094b18e9c37167fe8e45e8d7632dd19008a154127e8e0d81e30bf9b
    HEAD_REF vcpkg
)

file(COPY ${SOURCE_PATH}/include DESTINATION ${CURRENT_PACKAGES_DIR})
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
file(INSTALL "${SOURCE_PATH}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(INSTALL "${SOURCE_PATH}/cmake/Findmtl.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(INSTALL "${SOURCE_PATH}/share/mtl/mtl-targets.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(INSTALL "${SOURCE_PATH}/share/mtl/mtlConfig.cmake" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")


