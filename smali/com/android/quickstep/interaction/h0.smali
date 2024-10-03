.class public final synthetic Lcom/android/quickstep/interaction/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/interaction/TutorialController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/h0;->a:Lcom/android/quickstep/interaction/TutorialController;

    return-void
.end method


# virtual methods
.method public final onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/h0;->a:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->g(Lcom/android/quickstep/interaction/TutorialController;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
