package kr.go.me.service;

import java.util.List;

import kr.go.me.dto.SampleDTO;

public interface SampleService {
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO getSample(String id) throws Exception;
	public void addSample(SampleDTO sample) throws Exception;

}
