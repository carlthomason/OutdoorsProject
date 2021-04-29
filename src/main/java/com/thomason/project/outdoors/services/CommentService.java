package com.thomason.project.outdoors.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.thomason.project.outdoors.models.Comment;
import com.thomason.project.outdoors.repositories.CommentRepository;

@Service
public class CommentService {
    private final CommentRepository commentRepository;
    
    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }
    
    // Returns all the Comments
    public List<Comment> allComment() {
        return commentRepository.findAll();
    }
    
    // Creates a Comment
    public Comment createComment(Comment comment) {
        return commentRepository.save(comment);
    }
    
    // Find Comment By ID
    public Comment findComment(Long id) {
        Optional<Comment> optionalComment = commentRepository.findById(id);
        if(optionalComment.isPresent()) {
            return optionalComment.get();
        } else {
            return null;
        }
    }
    
    // Find Comment  By Camp Id
    public List<Comment> commentByCamp(Long id){
        List<Comment> comment = commentRepository.findByCampId(id);
        return comment;
    }
}
