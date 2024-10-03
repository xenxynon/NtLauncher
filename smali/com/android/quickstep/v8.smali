.class public final synthetic Lcom/android/quickstep/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final synthetic h:Lcom/android/wm/shell/pip/a;

.field public final synthetic i:Lcom/android/wm/shell/bubbles/f;

.field public final synthetic j:Lcom/android/wm/shell/splitscreen/a;

.field public final synthetic k:Lc1/a;

.field public final synthetic l:Lf1/a;

.field public final synthetic m:Ld1/a;

.field public final synthetic n:Lcom/android/wm/shell/recents/a;

.field public final synthetic o:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

.field public final synthetic p:Lw0/a;

.field public final synthetic q:La1/a;

.field public final synthetic r:Lo0/b;

.field public final synthetic s:Lb1/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v8;->g:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p2, p0, Lcom/android/quickstep/v8;->h:Lcom/android/wm/shell/pip/a;

    iput-object p3, p0, Lcom/android/quickstep/v8;->i:Lcom/android/wm/shell/bubbles/f;

    iput-object p4, p0, Lcom/android/quickstep/v8;->j:Lcom/android/wm/shell/splitscreen/a;

    iput-object p5, p0, Lcom/android/quickstep/v8;->k:Lc1/a;

    iput-object p6, p0, Lcom/android/quickstep/v8;->l:Lf1/a;

    iput-object p7, p0, Lcom/android/quickstep/v8;->m:Ld1/a;

    iput-object p8, p0, Lcom/android/quickstep/v8;->n:Lcom/android/wm/shell/recents/a;

    iput-object p9, p0, Lcom/android/quickstep/v8;->o:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p10, p0, Lcom/android/quickstep/v8;->p:Lw0/a;

    iput-object p11, p0, Lcom/android/quickstep/v8;->q:La1/a;

    iput-object p12, p0, Lcom/android/quickstep/v8;->r:Lo0/b;

    iput-object p13, p0, Lcom/android/quickstep/v8;->s:Lb1/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lcom/android/quickstep/v8;->g:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/v8;->h:Lcom/android/wm/shell/pip/a;

    iget-object v2, p0, Lcom/android/quickstep/v8;->i:Lcom/android/wm/shell/bubbles/f;

    iget-object v3, p0, Lcom/android/quickstep/v8;->j:Lcom/android/wm/shell/splitscreen/a;

    iget-object v4, p0, Lcom/android/quickstep/v8;->k:Lc1/a;

    iget-object v5, p0, Lcom/android/quickstep/v8;->l:Lf1/a;

    iget-object v6, p0, Lcom/android/quickstep/v8;->m:Ld1/a;

    iget-object v7, p0, Lcom/android/quickstep/v8;->n:Lcom/android/wm/shell/recents/a;

    iget-object v8, p0, Lcom/android/quickstep/v8;->o:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iget-object v9, p0, Lcom/android/quickstep/v8;->p:Lw0/a;

    iget-object v10, p0, Lcom/android/quickstep/v8;->q:La1/a;

    iget-object v11, p0, Lcom/android/quickstep/v8;->r:Lo0/b;

    iget-object v12, p0, Lcom/android/quickstep/v8;->s:Lb1/a;

    move-object v13, p1

    check-cast v13, Lcom/android/quickstep/TouchInteractionService;

    invoke-static/range {v0 .. v13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->R(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/a;Lcom/android/wm/shell/bubbles/f;Lcom/android/wm/shell/splitscreen/a;Lc1/a;Lf1/a;Ld1/a;Lcom/android/wm/shell/recents/a;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lw0/a;La1/a;Lo0/b;Lb1/a;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
