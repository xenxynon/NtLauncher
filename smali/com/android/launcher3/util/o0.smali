.class public final synthetic Lcom/android/launcher3/util/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/ScreenOnTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ScreenOnTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/o0;->g:Lcom/android/launcher3/util/ScreenOnTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/o0;->g:Lcom/android/launcher3/util/ScreenOnTracker;

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/ScreenOnTracker;->c(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    return-void
.end method
