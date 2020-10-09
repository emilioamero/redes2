import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PedidoabmComponent } from './pedidoabm.component';

describe('PedidoabmComponent', () => {
  let component: PedidoabmComponent;
  let fixture: ComponentFixture<PedidoabmComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PedidoabmComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PedidoabmComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
