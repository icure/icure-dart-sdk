// @dart=2.12
part of icure_dart_sdk.api;

extension HealthCarePartyDtoExtension on HealthcarePartyDto {
  HealthcarePartyDto initHcParty() {
    if (this.lastName == null && this.hasName(PersonNameDtoUseEnum.official)) {
      this.lastName = this.findName(PersonNameDtoUseEnum.official).lastName;
    } else if (this.firstName == null && this.hasName(PersonNameDtoUseEnum.official)) {
      this.firstName = this
          .findName(PersonNameDtoUseEnum.official)
          .firstNames
          .firstOrNull;
    } else if (this.name == null && this.hasName(PersonNameDtoUseEnum.official)) {
      this.name = this.findName(PersonNameDtoUseEnum.official).text;
    } else if ((this.name != null || this.lastName != null) && !this.hasName(PersonNameDtoUseEnum.official)) {
      this.names = [
        ...this.names,
        PersonNameDto(
            use: PersonNameDtoUseEnum.official, text: this.name, lastName: this.lastName, firstNames: this.firstName != null ? [this.firstName!] : [])
      ];
    }
    return this;
  }

  bool hasName(PersonNameDtoUseEnum nameUse) {
    return this.names.any((element) => element.use == nameUse);
  }

  PersonNameDto findName(PersonNameDtoUseEnum nameUse) {
    return this.names.firstWhere((element) => element.use == nameUse);
  }
}
