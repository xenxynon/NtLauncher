.class public final synthetic Ln/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/StringCache;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/j3;->a:Lcom/android/launcher3/model/StringCache;

    iput-object p2, p0, Ln/j3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln/j3;->a:Lcom/android/launcher3/model/StringCache;

    iget-object p0, p0, Ln/j3;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/StringCache;->b(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
