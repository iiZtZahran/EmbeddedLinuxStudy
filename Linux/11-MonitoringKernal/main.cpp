#include <chrono>
#include <sys/syslog.h>
#include <syslog.h>
#include <threads.h>
#include <iostream>

int main() {

  while (true) {

    openlog("my_cpp_app", LOG_PID | LOG_CONS, LOG_USER);

    syslog(LOG_INFO, "this is informational message ");

    syslog(LOG_ERR, "Error occured ");

    std::this_thread::sleep_for(std::chrono::seconds(3));

  }
  closelog();
  return 0 ;
}