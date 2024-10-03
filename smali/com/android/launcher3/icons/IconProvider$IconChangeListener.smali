.class public interface abstract Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconChangeListener"
.end annotation


# virtual methods
.method public abstract onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public onNothingIconForceRenderChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onSystemIconStateChanged(Ljava/lang/String;)V
.end method

.method public onThemedIconChanged()V
    .locals 0

    return-void
.end method
