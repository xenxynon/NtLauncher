.class public final synthetic Lcom/android/quickstep/interaction/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/interaction/TutorialController;

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/c0;->g:Lcom/android/quickstep/interaction/TutorialController;

    iput-object p2, p0, Lcom/android/quickstep/interaction/c0;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/c0;->g:Lcom/android/quickstep/interaction/TutorialController;

    iget-object p0, p0, Lcom/android/quickstep/interaction/c0;->h:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/interaction/TutorialController;->i(Lcom/android/quickstep/interaction/TutorialController;Ljava/lang/Runnable;)V

    return-void
.end method