.class public interface abstract Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnChangeListener<",
        "Lcom/google/android/material/slider/RangeSlider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V
    .param p1    # Lcom/google/android/material/slider/RangeSlider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method