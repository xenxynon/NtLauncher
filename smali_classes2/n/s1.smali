.class public final synthetic Ln/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic h:Lcom/android/launcher3/model/data/FolderInfo;

.field public final synthetic i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/s1;->g:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Ln/s1;->h:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p3, p0, Ln/s1;->i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/s1;->g:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Ln/s1;->h:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Ln/s1;->i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->c(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
