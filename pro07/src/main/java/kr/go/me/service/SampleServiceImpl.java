package kr.go.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.me.dto.SampleDTO;
import kr.go.me.model.SampleDAO;

@Service
public class SampleServiceImpl implements SampleService {
	
	@Autowired
	SampleDAO sampleDAO;

	@Override
	public List<SampleDTO> sampleList() throws Exception {
		return sampleDAO.sampleList();
	}

	@Override
	public SampleDTO getSample(String id) throws Exception {
		return sampleDAO.getSample(id);
	}

	@Override
	public void addSample(SampleDTO sample) throws Exception {
		sampleDAO.addSample(sample);
		
	}
	
	

}
