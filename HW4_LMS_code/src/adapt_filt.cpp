/***************************************************************************
 *
 * Homework for chapter 4 -- Adaptive filter using LMS & RLS
 *
 * Here is the realization of adapt_filtering function.
 *
 **************************************************************************/

// LMS ↓

// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include "adapt_filt.h"

// /**
//  * @brief time-domain adaptive filter algorithm
//  *
//  * @param input          input audio sample of time index(n)
//  * @param adapt_filter   adaptive filter buffer
//  * @param filter_length  adaptive filter length, 128 by default
//  * @param err            error output of time index(n)
//  * @return
//  *     @retval 0         successfully
//  */
// int adapt_filtering(short input, double* adapt_filter, int filter_length, short* err) {
//     int i;
//     double filter_output = 0.0;
//     double error = 0.0;
//     double mu = 0.2;

//     // update inputdata buffer. Each sample is normalized to [-1,1)
//     for(i = filter_length - 1; i > 0; i--) {
//         inputdata[i] = inputdata[i - 1];
//     }
//     inputdata[0] = double(input / 32768.0);
//     //inputdata[0] = double(input);

//     // finish adaptive filtering algorithm here, using LMS and RLS, respectively

//     /*    Least-Mean-Square(LMS) Filter    */
//     1. calculate filter output, as well as necessary parameters
//     for(i = 0; i < filter_length; i++)
//     {
//       filter_output = *(adapt_filter + i) * inputdata[i] + filter_output;
//     }
//     // error = inputdata[0] - filter_output;

//     // 2. update filter: adapt_filter, for future iterations
//     for(i = 0; i < filter_length; i++)
//     {
//       *(adapt_filter + i) = *(adapt_filter + i) + 2*mu*inputdata[i]*error;
//     }
//     // end adaptive filtering algorithm

//     // output error
//     err[0] = short(error * 32768.0);
//     //err[0] = short(error);
//     return 0;
// }

// RLS ↓

/***************************************************************************
 *
 * Homework for chapter 4 -- Adaptive filter using LMS & RLS
 *
 * Here is the realization of adapt_filtering function.
 *
 **************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "adapt_filt.h"

// // Eigen 核心部分
// #include <Eigen/Core>
// // 稠密矩阵的代数运算（逆，特征值等）
// #include <Eigen/Dense>
// using namespace Eigen;

/**
 * @brief time-domain adaptive filter algorithm
 *
 * @param input          input audio sample of time index(n)
 * @param adapt_filter   adaptive filter buffer
 * @param filter_length  adaptive filter length, 128 by default
 * @param err            error output of time index(n)
 * @return
 *     @retval 0         successfully
 */
int adapt_filtering(short input, double *adapt_filter, int filter_length, short *err)
{
  int i;
  double filter_output = 0.0;
  double error = 0.0;
  double mu = 0.2;
  double lambda = 0.95;
  Eigen::Matrix<double, 128, 1> k;
  Eigen::Matrix<double, 128, 1> x;
  // Eigen::Matrix<double, 128, 128> P;

  // update inputdata buffer. Each sample is normalized to [-1,1)
  // 提供的循环，可成功跳出
  for (i = filter_length - 1; i > 0; i--)
  {
    inputdata[i] = inputdata[i - 1];
  }
  inputdata[0] = double(input / 32768.0);

  // finish adaptive filtering algorithm here, using LMS and RLS, respectively

  // save the input data to a 128*1 vector
  for (i = 0; i < filter_length; i++)
  {
    x(i, 0) = inputdata[i];
  }

  /*    Recursive-Least-Square(RLS) Filter    */
  // 1. calculate filter output, as well as necessary parameters
  // 计算滤波器输出，循环可成功跳出
  for (i = 0; i < filter_length; i++)
  {
    filter_output = *(adapt_filter + i) * inputdata[i] + filter_output;
  }
  error = inputdata[0] - filter_output;
  k = (P * x) / (lambda + x.transpose() * P * x);
  P = (P - k * x.transpose() * P) / lambda;

  // 2. update filter: adapt_filter, for future iterations
  //更新滤波器系数，循环可成功跳出
  for (i = 0; i < filter_length; i++)
  {
    *(adapt_filter + i) = *(adapt_filter + i) + k(i, 0) * error;
  }
  // end adaptive filtering algorithm

  // output error
  err[0] = short(error * 32768.0);
  // err[0] = short(error);
  return 0;
}
