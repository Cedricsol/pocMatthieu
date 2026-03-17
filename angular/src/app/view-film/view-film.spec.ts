import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewFilm } from './view-film';

describe('ViewFilm', () => {
  let component: ViewFilm;
  let fixture: ComponentFixture<ViewFilm>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ViewFilm]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ViewFilm);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
