.class public final synthetic Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lo0/h;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lo0/h;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g;->g:Lo0/h;

    iput p2, p0, Lo0/g;->h:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo0/g;->g:Lo0/h;

    iget p0, p0, Lo0/g;->h:F

    invoke-static {v0, p0}, Lo0/h;->T(Lo0/h;F)V

    return-void
.end method
