import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MyArmyComponent } from './my-army.component';

describe('MyArmyComponent', () => {
  let component: MyArmyComponent;
  let fixture: ComponentFixture<MyArmyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MyArmyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MyArmyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
