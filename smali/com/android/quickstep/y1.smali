.class public final synthetic Lcom/android/quickstep/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/FallbackSwipeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/y1;->g:Lcom/android/quickstep/FallbackSwipeHandler;

    return-void
.end method


# virtual methods
.method public final onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/y1;->g:Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler;->m0(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method
