.class public final synthetic Lcom/android/quickstep/views/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/views/c0;->g:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/c0;->g:F

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->G(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
