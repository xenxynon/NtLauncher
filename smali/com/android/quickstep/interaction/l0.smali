.class public final synthetic Lcom/android/quickstep/interaction/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/TutorialController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/l0;->g:Lcom/android/quickstep/interaction/TutorialController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/l0;->g:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->e(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void
.end method
