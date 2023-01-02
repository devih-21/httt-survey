import React, { useState, useEffect } from 'react';
import {
  Form,
  Card,
  Col,
  Row,
  Typography,
  Descriptions,
  Button,
  message,
  Space,
  Layout,
  Radio,
  Select,
  Spin,
} from 'antd';

import { getData } from '../../api/getData';
import './index.scss';

const { Option } = Select;

const { Title } = Typography;

export const Landing = () => {
  const [form] = Form.useForm();
  const [dataQues, setDataQues] = useState([]);
  const [loading, setLoading] = useState(false);
  const [dataResult, setDataResult] = useState(null);

  useEffect(() => {
    getInfo();
  }, []);

  const getInfo = async () => {
    const data = await getData.getQues();
    setDataQues(data);
  };

  const submitForm = async (formData) => {
    setLoading(true);
    const query = dataQues.map((item, index) => ({
      weight: item?.QuestionWeight,
      value: Object.values(formData)[index],
    }));
    const data = await getData.postForm(query);
    setDataResult(data);
    setLoading(false);
  };

  return (
    <>
      <div className="screen">
        {dataQues?.length ? (
          <>
            <Form
              className="form-input"
              labelAlign="left"
              form={form}
              layout="vertical"
              onFinish={submitForm}>
              <Title level={1} align="center">
                Hệ thống dự đoán ngành học dựa trên khảo sát
              </Title>
              <br />
              <br />
              <Row>
                {dataQues.map((item, index) => (
                  <Col span={12} key={item?.ID} style={{ padding: 12 }}>
                    <Form.Item
                      label={index + 1 + ': ' + item?.QuestionContent}
                      name={item?.ID}
                      rules={[
                        {
                          required: true,
                          message: 'Vui lòng chọn câu trả lời!',
                        },
                      ]}>
                      <Radio.Group defaultValue={null}>
                        <Space direction="vertical">
                          {item.AnsA !== 'NULL' && (
                            <Radio value={item.PersenA}> {item.AnsA} </Radio>
                          )}
                          {item.AnsB !== 'NULL' && (
                            <Radio value={item.PersenB}> {item.AnsB} </Radio>
                          )}
                          {item.AnsC !== 'NULL' && (
                            <Radio value={item.PersenC}> {item.AnsC} </Radio>
                          )}
                        </Space>
                      </Radio.Group>
                    </Form.Item>
                  </Col>
                ))}
              </Row>
              <Form.Item>
                <Form.Item
                  wrapperCol={{
                    sm: {
                      span: 12,
                      offset: 11,
                    },
                  }}>
                  <Button type="primary" loading={loading} htmlType="submit">
                    Submit
                  </Button>
                </Form.Item>
              </Form.Item>
            </Form>
            {dataResult && (
              <Descriptions
                style={{
                  marginBottom: 200,
                }}
                title="Dự đoán nhóm ngành phù hợp với bạn là:"
                bordered>
                <Descriptions.Item label="Tên nhóm ngàng:" span={24}>
                  {dataResult?.type}
                </Descriptions.Item>
                <Descriptions.Item label="Các trường liên quan:" span={24}>
                  {dataResult?.content}
                </Descriptions.Item>
              </Descriptions>
            )}
          </>
        ) : (
          <Spin size="large" className="form-input" />
        )}
      </div>
    </>
  );
};
