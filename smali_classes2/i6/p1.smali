.class public final Li6/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/q1;


# instance fields
.field private final g:Li6/h2;


# direct methods
.method public constructor <init>(Li6/h2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/p1;->g:Li6/h2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()Li6/h2;
    .locals 0

    iget-object p0, p0, Li6/p1;->g:Li6/h2;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
