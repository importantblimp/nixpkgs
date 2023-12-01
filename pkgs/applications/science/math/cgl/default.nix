{ lib
, stdenv
, fetchFromGitHub
, pkg-config
, coin-utils
, osi
, clp
}:

stdenv.mkDerivation rec {
  pname = "cgl";
  version = "0.60.8";

  src = fetchFromGitHub {
    owner = "coin-or";
    repo = "Cgl";
    rev = "releases/${version}";
    hash = "sha256-nyqrHC6UOKp1wn6Yvk+53oBn60wUqSWEPUrcNTuPN04=";
  };

  nativeBuildInputs = [
    pkg-config
    coin-utils
    osi
    clp
  ];

  meta = with lib; {
    description = "Cut Generator Library";
    homepage = "https://github.com/coin-or/Cgl";
    license = licenses.epl20;
    maintainers = with maintainers; [ importantblimp ];
  };
}
