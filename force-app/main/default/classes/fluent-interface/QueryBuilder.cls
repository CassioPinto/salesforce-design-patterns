public without sharing class QueryBuilder {

    private String selectClause = 'SELECT ';
    private Set<String> selectFields = new Set<String>();
    private String fromClause = 'FROM ';
    private String whereClause = 'WHERE ';
    private Set<String> whereExpressions = new Set<String>();
    private String limitClause = 'LIMIT ';

    public QueryBuilder selectField(String fieldAPIName) {
        this.selectFields.add(fieldAPIName);
        return this;
    }

    public QueryBuilder fromObject(String objectAPIName) {
        this.fromClause += objectAPIName;
        return this;
    }

    public QueryBuilder whereExpression(String expression) {
        this.whereExpressions.add(expression);
        return this;
    }

    public QueryBuilder setLimit(Integer recordLimit) {
        this.limitClause += recordLimit.toString();
        return this;
    }

    public String buildQuery() {

        if (this.selectFields.isEmpty()) {
            throw new QueryBuilderException('Please select atleast 1 field.');
        }

        String selectString = this.selectClause + String.join(this.selectFields, ',') + ' ';

        if (this.fromClause.length() == 5) {
            throw new QueryBuilderException('Please select an object.');
        }

        String fromString = this.fromClause + ' ';

        String whereString = '';
        if (!whereExpressions.isEmpty()) {
            whereString = this.whereClause + String.join(this.whereExpressions, ' ') + ' ';
        }

        String limitString = '';
        if (this.limitClause.length() > 6) {
            limitString = this.limitClause;
        }

        return selectString + fromString + whereString + limitString;
    }

    public class QueryBuilderException extends Exception {}
}