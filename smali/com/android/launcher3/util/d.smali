.class public final synthetic Lcom/android/launcher3/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/d;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/d;->a:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    check-cast p2, [Lcom/android/launcher3/util/WindowBounds;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->k(Ljava/io/PrintWriter;Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method
