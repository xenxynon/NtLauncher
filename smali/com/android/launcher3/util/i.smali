.class public final synthetic Lcom/android/launcher3/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/DisplayController$Info;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/i;->g:Lcom/android/launcher3/util/DisplayController$Info;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/i;->g:Lcom/android/launcher3/util/DisplayController$Info;

    check-cast p1, [Lcom/android/launcher3/util/WindowBounds;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->b(Lcom/android/launcher3/util/DisplayController$Info;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method