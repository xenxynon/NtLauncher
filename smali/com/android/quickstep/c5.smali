.class public final synthetic Lcom/android/quickstep/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field public final synthetic h:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iput-object p2, p0, Lcom/android/quickstep/c5;->h:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/c5;->g:Lcom/android/quickstep/RecentsAnimationDeviceState;

    iget-object p0, p0, Lcom/android/quickstep/c5;->h:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->h(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method
