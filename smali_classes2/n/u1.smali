.class public final synthetic Ln/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic h:Ljava/util/Collection;

.field public final synthetic i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/u1;->g:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Ln/u1;->h:Ljava/util/Collection;

    iput-object p3, p0, Ln/u1;->i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/u1;->g:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Ln/u1;->h:Ljava/util/Collection;

    iget-object p0, p0, Ln/u1;->i:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/ModelWriter;->h(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
