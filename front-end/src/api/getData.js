import { rest } from './rest';

export const getData = {
  getQues: () => rest.get('/v1/get/data-ques', {}, null, true),
  postForm: (query) => rest.post('/v1/post/submit-ques', query, null, true),
};
