.class public final synthetic Ln/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/x1;->g:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    iput p2, p0, Ln/x1;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/x1;->g:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    iget p0, p0, Ln/x1;->h:I

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->a(Lcom/android/launcher3/model/ModelWriter$ModelVerifier;I)V

    return-void
.end method
