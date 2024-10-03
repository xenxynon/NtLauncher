.class public final synthetic Lcom/android/launcher3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;

.field public final synthetic b:Li0/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Li0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k1;->a:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/k1;->b:Li0/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/k1;->a:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/k1;->b:Li0/c;

    invoke-static {v0, p0}, Lcom/android/launcher3/Launcher;->D(Lcom/android/launcher3/Launcher;Li0/c;)Ll0/b;

    move-result-object p0

    return-object p0
.end method
