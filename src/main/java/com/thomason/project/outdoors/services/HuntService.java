package com.thomason.project.outdoors.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.thomason.project.outdoors.models.Hunt;
import com.thomason.project.outdoors.repositories.HuntRepository;

@Service
public class HuntService {
    private final HuntRepository huntRepository;

    public HuntService(HuntRepository huntRepository) {
        this.huntRepository = huntRepository;
    }

    // get all Hunting Spot
    public List<Hunt> getAll() {
       return (List<Hunt>) huntRepository.findAll();
    }

    // find a Hunting spot by id
    public Hunt findHunt(Long id) {
       Optional<Hunt> myhunt = huntRepository.findById(id);
       if (myhunt.isPresent()) {
           return myhunt.get();
       }else {
           return null;
       }
   }
    
   // create a Hunting Spots
   public Hunt createHunt(Hunt myHunt) {
      return huntRepository.save(myHunt);
   }

   // Update Hunting Spots
   public void updateHunt(Hunt myHunt) {
      huntRepository.save(myHunt);
   }

   // Delete Hunting Spots
   public void deleteHunt(Long myId) {
        huntRepository.deleteById(myId);
   }
}
