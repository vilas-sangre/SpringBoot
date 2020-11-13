package com.example.app.utility;
import java.util.List;

import org.apache.commons.lang.SystemUtils;

import com.github.dockerjava.api.DockerClient;
import com.github.dockerjava.api.command.InspectContainerResponse;
import com.github.dockerjava.api.command.ListContainersCmd;
import com.github.dockerjava.api.command.ListImagesCmd;
import com.github.dockerjava.api.model.Container;
import com.github.dockerjava.api.model.Image;
import com.github.dockerjava.core.DefaultDockerClientConfig;
import com.github.dockerjava.core.DockerClientBuilder;
public class DockerUtility {
	
	
	
	
	
	public static void main(String args[])
	{
		
		/*DefaultDockerClientConfig config  = DefaultDockerClientConfig.createDefaultConfigBuilder()
		    .withRegistryEmail("info@baeldung.com")
		    .withRegistryPassword("baeldung")
		    .withRegistryUsername("baeldung")
		    .withDockerCertPath("/home/baeldung/.docker/certs")
		    .withDockerConfig("/home/baeldung/.docker/")
		    .withDockerTlsVerify("1")
		    .withDockerHost("tcp://localhost:2375").build();
		 
		DockerClient dockerClient1 = DockerClientBuilder.getInstance(config).build();*/
		
		
		String localDockerHost = SystemUtils.IS_OS_WINDOWS ? "tcp://localhost:2375" : "unix:///var/run/docker.sock";
		DockerClient dockerClient = DockerClientBuilder.getInstance(localDockerHost).build();
		
		System.out.println("------------------------------Container List Start---------------------------------");
		
		List<Container> containers = dockerClient.listContainersCmd().exec();

		    for(int i=0; i < containers.size(); i++){
		        System.out.println(containers.get(i));
		    }
		    
		System.out.println("------------------------------Container List Finished---------------------------------");
		
		System.out.println("------------------------------Images List Start---------------------------------");
		List<Image> images = dockerClient.listImagesCmd().exec();

	    for(int i=0; i < images.size(); i++){
	        System.out.println(images.get(i));
	    }
	    System.out.println("------------------------------Images List Finished---------------------------------");
	}

}
