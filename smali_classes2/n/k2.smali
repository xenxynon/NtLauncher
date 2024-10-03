.class public final synthetic Ln/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/PackageUpdatedTask;

.field public final synthetic h:Ljava/util/function/Predicate;

.field public final synthetic i:Lcom/android/launcher3/util/IntSet;

.field public final synthetic j:Z

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lcom/android/launcher3/util/IntSet;

.field public final synthetic m:Ljava/util/HashSet;

.field public final synthetic n:Ljava/util/HashMap;

.field public final synthetic o:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic p:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic q:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/k2;->g:Lcom/android/launcher3/model/PackageUpdatedTask;

    iput-object p2, p0, Ln/k2;->h:Ljava/util/function/Predicate;

    iput-object p3, p0, Ln/k2;->i:Lcom/android/launcher3/util/IntSet;

    iput-boolean p4, p0, Ln/k2;->j:Z

    iput-object p5, p0, Ln/k2;->k:Landroid/content/Context;

    iput-object p6, p0, Ln/k2;->l:Lcom/android/launcher3/util/IntSet;

    iput-object p7, p0, Ln/k2;->m:Ljava/util/HashSet;

    iput-object p8, p0, Ln/k2;->n:Ljava/util/HashMap;

    iput-object p9, p0, Ln/k2;->o:Lcom/android/launcher3/icons/IconCache;

    iput-object p10, p0, Ln/k2;->p:Lcom/android/launcher3/util/FlagOp;

    iput-object p11, p0, Ln/k2;->q:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Ln/k2;->g:Lcom/android/launcher3/model/PackageUpdatedTask;

    iget-object v1, p0, Ln/k2;->h:Ljava/util/function/Predicate;

    iget-object v2, p0, Ln/k2;->i:Lcom/android/launcher3/util/IntSet;

    iget-boolean v3, p0, Ln/k2;->j:Z

    iget-object v4, p0, Ln/k2;->k:Landroid/content/Context;

    iget-object v5, p0, Ln/k2;->l:Lcom/android/launcher3/util/IntSet;

    iget-object v6, p0, Ln/k2;->m:Ljava/util/HashSet;

    iget-object v7, p0, Ln/k2;->n:Ljava/util/HashMap;

    iget-object v8, p0, Ln/k2;->o:Lcom/android/launcher3/icons/IconCache;

    iget-object v9, p0, Ln/k2;->p:Lcom/android/launcher3/util/FlagOp;

    iget-object v10, p0, Ln/k2;->q:Ljava/util/ArrayList;

    move-object v11, p1

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static/range {v0 .. v11}, Lcom/android/launcher3/model/PackageUpdatedTask;->o(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
