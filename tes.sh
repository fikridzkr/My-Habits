  echo Cleaning project...
    flutter clean 2>&1 >/dev/null

    echo Updating Pod...
    pod repo update

    # {if ! ( "${PWD##*/}" == 'ios') 2>&1 >/dev/null
    #     then cd ios
    # fi} 2>&1 >/dev/null

    echo Removing pod files...
    rm -rf Podfile.lock Pods/ 2>&1 >/dev/null

    cd ..

    echo Removing cached flutter dependency files...
    rm -rf pubspec.lock .packages .flutter-plugins 2>&1 >/dev/null

    echo Repairing pub cache...
    flutter pub pub cache repair

    echo Getting all flutter packages...
    flutter packages get

    cd ios

    echo Running pod install...
    pod install

    cd ..

    echo DONE!
