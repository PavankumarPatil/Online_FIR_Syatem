package com.app.OnlineFIRsystem.crimes;

import java.util.List;

public interface CrimeService {

    public Crime addCrimeDetail(Crime crime);

    public void deleteCrimeDetail(long id);

    public List<Crime> findAllCrime();

}