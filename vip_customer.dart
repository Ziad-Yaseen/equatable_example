void main() {
  print(
    getVip([
      'Vip',
      'normal',
      'Vip',
      'normal',
      'Vip',
      'Vip',
      'normal',
      'normal',
      'Vip',
    ]),
  );
}

getVip(List<String> clientsType) {
  int numberOfVipMembers = 0;
  for (int i = 0; i < clientsType.length; i++) {
    if (clientsType[i].toLowerCase() == 'vip') numberOfVipMembers++;
  }

  return numberOfVipMembers;
}
