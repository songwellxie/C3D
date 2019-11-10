mkdir -p output/c3d/v_ApplyEyeMakeup_g01_c01
mkdir -p output/c3d/v_BaseballPitch_g01_c01
if [ ! -f c3d_resnet18_sports1m_r2_iter_2800000.caffemodel ];then
	wget https://www.dropbox.com/s/qqfrg6h44d4jb46/c3d_resnet18_sports1m_r2_iter_2800000.caffemodel
fi

GLOG_logtosterr=1 ../../../../caffe/build/tools/extract_features prototxt/c3d_sport1m_feature_extractor_video.prototxt c3d_resnet18_sports1m_r2_iter_2800000.caffemodel 0 50 1 prototxt/output_list_video_prefix.txt fc7-1 fc6-1 prob
