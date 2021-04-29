package com.thomason.project.outdoors.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thomason.project.outdoors.models.Comment;

@Repository
public interface CommentRepository extends CrudRepository<Comment, Long> {
            List<Comment> findAll();
            List<Comment> findByCampId(Long search);
            void deleteById(Long id);
}