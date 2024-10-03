.class public final synthetic Ln/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/WellbeingModel;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/n3;->g:Lcom/android/launcher3/model/WellbeingModel;

    iput p2, p0, Ln/n3;->h:I

    iput-object p3, p0, Ln/n3;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln/n3;->g:Lcom/android/launcher3/model/WellbeingModel;

    iget v1, p0, Ln/n3;->h:I

    iget-object p0, p0, Ln/n3;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/model/WellbeingModel;->i(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V

    return-void
.end method
