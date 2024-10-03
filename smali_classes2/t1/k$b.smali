.class public abstract Lt1/k$b;
.super Lt1/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lt1/k<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lt1/k$b<",
        "TMessageType;TBuilderType;>;>",
        "Lt1/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lt1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected instance:Lt1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected isBuilt:Z


# direct methods
.method protected constructor <init>(Lt1/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/a$a;-><init>()V

    iput-object p1, p0, Lt1/k$b;->defaultInstance:Lt1/k;

    sget-object v0, Lt1/k$i;->k:Lt1/k$i;

    invoke-virtual {p1, v0}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt1/k;

    iput-object p1, p0, Lt1/k$b;->instance:Lt1/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt1/k$b;->isBuilt:Z

    return-void
.end method


# virtual methods
.method public final build()Lt1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p0

    invoke-virtual {p0}, Lt1/k;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lt1/a$a;->newUninitializedMessageException(Lt1/r;)Lt1/y;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lt1/r;
    .locals 0

    invoke-virtual {p0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lt1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lt1/k$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt1/k$b;->instance:Lt1/k;

    return-object p0

    :cond_0
    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/k$b;->isBuilt:Z

    iget-object p0, p0, Lt1/k$b;->instance:Lt1/k;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt1/k$b;->clone()Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lt1/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/k$b;->getDefaultInstanceForType()Lt1/k;

    move-result-object v0

    invoke-virtual {v0}, Lt1/k;->newBuilderForType()Lt1/k$b;

    move-result-object v0

    invoke-virtual {p0}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p0

    invoke-virtual {v0, p0}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    return-object v0
.end method

.method protected copyOnWrite()V
    .locals 3

    iget-boolean v0, p0, Lt1/k$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    sget-object v1, Lt1/k$i;->k:Lt1/k$i;

    invoke-virtual {v0, v1}, Lt1/k;->dynamicMethod(Lt1/k$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/k;

    sget-object v1, Lt1/k$h;->a:Lt1/k$h;

    iget-object v2, p0, Lt1/k$b;->instance:Lt1/k;

    invoke-virtual {v0, v1, v2}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    iput-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/k$b;->isBuilt:Z

    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()Lt1/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object p0, p0, Lt1/k$b;->defaultInstance:Lt1/k;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lt1/r;
    .locals 0

    invoke-virtual {p0}, Lt1/k$b;->getDefaultInstanceForType()Lt1/k;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic internalMergeFrom(Lt1/a;)Lt1/a$a;
    .locals 0

    check-cast p1, Lt1/k;

    invoke-virtual {p0, p1}, Lt1/k$b;->internalMergeFrom(Lt1/k;)Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method protected internalMergeFrom(Lt1/k;)Lt1/k$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lt1/k;)Lt1/k$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lt1/k$b;->copyOnWrite()V

    iget-object v0, p0, Lt1/k$b;->instance:Lt1/k;

    sget-object v1, Lt1/k$h;->a:Lt1/k$h;

    invoke-virtual {v0, v1, p1}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    return-object p0
.end method
