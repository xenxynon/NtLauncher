.class public final synthetic Lcom/android/quickstep/i9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic h:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final synthetic i:Lcom/android/wm/shell/pip/a;

.field public final synthetic j:Lcom/android/wm/shell/bubbles/f;

.field public final synthetic k:Lcom/android/wm/shell/splitscreen/a;

.field public final synthetic l:Lc1/a;

.field public final synthetic m:Lf1/a;

.field public final synthetic n:Ld1/a;

.field public final synthetic o:Lcom/android/wm/shell/recents/a;

.field public final synthetic p:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

.field public final synthetic q:Lw0/a;

.field public final synthetic r:La1/a;

.field public final synthetic s:Lo0/b;

.field public final synthetic t:Lb1/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/i9;->h:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p3, p0, Lcom/android/quickstep/i9;->i:Lcom/android/wm/shell/pip/a;

    iput-object p4, p0, Lcom/android/quickstep/i9;->j:Lcom/android/wm/shell/bubbles/f;

    iput-object p5, p0, Lcom/android/quickstep/i9;->k:Lcom/android/wm/shell/splitscreen/a;

    iput-object p6, p0, Lcom/android/quickstep/i9;->l:Lc1/a;

    iput-object p7, p0, Lcom/android/quickstep/i9;->m:Lf1/a;

    iput-object p8, p0, Lcom/android/quickstep/i9;->n:Ld1/a;

    iput-object p9, p0, Lcom/android/quickstep/i9;->o:Lcom/android/wm/shell/recents/a;

    iput-object p10, p0, Lcom/android/quickstep/i9;->p:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p11, p0, Lcom/android/quickstep/i9;->q:Lw0/a;

    iput-object p12, p0, Lcom/android/quickstep/i9;->r:La1/a;

    iput-object p13, p0, Lcom/android/quickstep/i9;->s:Lo0/b;

    iput-object p14, p0, Lcom/android/quickstep/i9;->t:Lb1/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/quickstep/i9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object v1, p0, Lcom/android/quickstep/i9;->h:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v2, p0, Lcom/android/quickstep/i9;->i:Lcom/android/wm/shell/pip/a;

    iget-object v3, p0, Lcom/android/quickstep/i9;->j:Lcom/android/wm/shell/bubbles/f;

    iget-object v4, p0, Lcom/android/quickstep/i9;->k:Lcom/android/wm/shell/splitscreen/a;

    iget-object v5, p0, Lcom/android/quickstep/i9;->l:Lc1/a;

    iget-object v6, p0, Lcom/android/quickstep/i9;->m:Lf1/a;

    iget-object v7, p0, Lcom/android/quickstep/i9;->n:Ld1/a;

    iget-object v8, p0, Lcom/android/quickstep/i9;->o:Lcom/android/wm/shell/recents/a;

    iget-object v9, p0, Lcom/android/quickstep/i9;->p:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iget-object v10, p0, Lcom/android/quickstep/i9;->q:Lw0/a;

    iget-object v11, p0, Lcom/android/quickstep/i9;->r:La1/a;

    iget-object v12, p0, Lcom/android/quickstep/i9;->s:Lo0/b;

    iget-object v13, p0, Lcom/android/quickstep/i9;->t:Lb1/a;

    invoke-static/range {v0 .. v13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->a0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V

    return-void
.end method
