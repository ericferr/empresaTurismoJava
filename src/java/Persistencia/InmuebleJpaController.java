package Persistencia;

import Logica.Inmueble;
import Persistencia.exceptions.NonexistentEntityException;
import Persistencia.exceptions.PreexistingEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;


public class InmuebleJpaController implements Serializable {

    public InmuebleJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public InmuebleJpaController() {
       emf = Persistence.createEntityManagerFactory("InmobiliariaPU");
    }

    public void create(Inmueble inmueble) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(inmueble);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findInmueble(inmueble.getCodigo()) != null) {
                throw new PreexistingEntityException("Inmueble " + inmueble + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Inmueble inmueble) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            inmueble = em.merge(inmueble);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = inmueble.getCodigo();
                if (findInmueble(id) == null) {
                    throw new NonexistentEntityException("The inmueble with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Inmueble inmueble;
            try {
                inmueble = em.getReference(Inmueble.class, id);
                inmueble.getCodigo();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The inmueble with id " + id + " no longer exists.", enfe);
            }
            em.remove(inmueble);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Inmueble> findInmuebleEntities() {
        return findInmuebleEntities(true, -1, -1);
    }

    public List<Inmueble> findInmuebleEntities(int maxResults, int firstResult) {
        return findInmuebleEntities(false, maxResults, firstResult);
    }

    private List<Inmueble> findInmuebleEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Inmueble.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Inmueble findInmueble(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Inmueble.class, id);
        } finally {
            em.close();
        }
    }

    public int getInmuebleCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Inmueble> rt = cq.from(Inmueble.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
