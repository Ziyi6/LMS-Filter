/***************************************************************************
 *
 * Homework for chapter 4 -- Adaptive filter using LMS & RLS
 *
 * Here is the declaration of adapt_filtering function.
 *
 **************************************************************************/

#ifndef _ADAPT_FILT_H_
#define _ADAPT_FILT_H_

// Eigen 核心部分
#include <Eigen/Core>
// 稠密矩阵的代数运算（逆，特征值等）
#include <Eigen/Dense>
using namespace Eigen;

const int filter_length = 128;
static double inputdata[filter_length];
// static Matrix128d P = 100.0 * Matrix128d::Identity();
static Eigen::Matrix<double, 128, 128> P = 100.0 * Eigen::Matrix<double, 128, 128>::Identity();

int adapt_filtering(short input, double *adapt_filter, int filter_length, short *err);

#endif
